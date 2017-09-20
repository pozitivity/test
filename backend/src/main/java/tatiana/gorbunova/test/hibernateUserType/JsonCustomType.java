package tatiana.gorbunova.test.hibernateUserType;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.usertype.UserType;

import java.io.IOException;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class JsonCustomType implements UserType {

    private final ObjectMapper objectMapper = new ObjectMapper();

    public int[] sqlTypes() {
        return new int[]{2000};
    }

    public Class returnedClass() {
        return HashMap.class;
    }

    public boolean equals(Object o, Object o2) throws HibernateException {
        return o == null?o2 == null:o.equals(o2);
    }

    public int hashCode(Object o) throws HibernateException {
        return o.hashCode();
    }

    public Object nullSafeGet(ResultSet resultSet, String[] names, SessionImplementor sessionImplementor, Object o) throws HibernateException, SQLException {
        if(resultSet.getObject(names[0]) == null) {
            return null;
        } else {
            String string = resultSet.getString(names[0]);
            HashMap result = null;
            try {
                result = objectMapper.readValue(string, HashMap.class);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            return result;
        }
    }

    public void nullSafeSet(PreparedStatement preparedStatement, Object value, int index, SessionImplementor sessionImplementor) throws HibernateException, SQLException {
        if(value == null) {
            preparedStatement.setNull(index, 0);
        } else {
            String jsonString = null;
            try {
                jsonString = objectMapper.writeValueAsString(value);
            } catch (IOException var7) {
                var7.printStackTrace();
            }
            preparedStatement.setObject(index, jsonString);
        }
    }

    public Object deepCopy(Object o) throws HibernateException {
        Object copy = null;

        try {
            copy = objectMapper.readValue(objectMapper.writeValueAsBytes(o), this.returnedClass());
        } catch (IOException var4) {
            var4.printStackTrace();
        }

        return copy;
    }

    public boolean isMutable() {
        return false;
    }

    public Serializable disassemble(Object o) throws HibernateException {
        return (Serializable)this.deepCopy(o);
    }

    public Object assemble(Serializable serializable, Object o) throws HibernateException {
        return this.deepCopy(serializable);
    }

    public Object replace(Object o, Object o2, Object o3) throws HibernateException {
        return this.deepCopy(o);
    }
}

