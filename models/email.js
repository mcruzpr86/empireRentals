module.exports = function(sequelize, DataTypes) {
    const Email = sequelize.define("email", {
      name: DataTypes.STRING,

      emailAddress: DataTypes.STRING
    });
    return Email;
  };