package tatiana.gorbunova.test.hibernateUserType;

import org.hibernate.dialect.PostgreSQL9Dialect;

public class CustomPostgreSQLDialect extends PostgreSQL9Dialect {

    public CustomPostgreSQLDialect() {
        super();

        registerColumnType(2000, "jsonb");
        registerHibernateType(2000, "jsonb");
    }
}
