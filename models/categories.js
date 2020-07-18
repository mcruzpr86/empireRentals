module.exports = function(sequelize, DataTypes) {
    const Category = sequelize.define("category", {
      // Giving the Author model a name of type STRING
      item_description: DataTypes.STRING
    });
    Category.associate = function(models) {
      // Associating Author with Posts
      // When an Author is deleted, also delete any associated Posts
      Category.hasMany(models.Product, {
        onDelete: "cascade"
      });
    };
    return Category;
  };