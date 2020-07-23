module.exports = function(sequelize, DataTypes) {
    var Product = sequelize.define("Product", {
      item_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [1]
        }
      },
      item_description: {
        type: DataTypes.TEXT,
        allowNull: false,
        validate:{
        len: [1]
      }},
      category: {
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
        len: [1]
      }},
      price: {
        type: DataTypes.DECIMAL,
        allowNull: false,
        validate:{
        len: [1]
      }},
      quantity: {
        type: DataTypes.INTEGER,
        allowNull: false,
        validate:{
        len: [1]
      }},
      imgurl: {
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
        len: [1]
      }}
      
    });
  
    Product.associate = function(models) {
     
      Product.belongsTo(models.Category, {
        foreignKey: {
          allowNull: false
        }
      });
    };
  
    return Product;
  };
  