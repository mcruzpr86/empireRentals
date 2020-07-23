$.get("/api/products/category/3", function(data) {
    console.log(data.Products)

    data.Products.forEach((product, index) => {
        const productCard = $(`#card${index}`)
        const productTitle = $(productCard).find("h5")
        productTitle.text(product.item_name)
        const description = $(productCard).find("p.product-description")
        description.text(product.item_description)
        const cartButton = $(productCard).find(".cartBtn")
        cartButton.attr("data-cartbutton", index)
    });
})