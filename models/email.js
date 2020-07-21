module.exports = function(sequelize, DataTypes) {
    const Email = sequelize.define("email", {
      // Giving the Author model a name of type STRING
      email: DataTypes.STRING
    });
    return Email;
  };