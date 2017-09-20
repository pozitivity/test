const generateConfiguration = require("./config");

module.exports = [
    generateConfiguration({
        debug: false,
        devServer: false
    })
];
