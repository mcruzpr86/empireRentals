$.get("/api/products/category/1", function (data) {
    console.log(data)

    data.forEach((product, index) => {
        const productCard = $(`#card${index}`)
        const productImg = $(productCard).find("img.productImg")
        console.log(productImg)
        productImg.attr("src", product.imgurl)
        const productTitle = $(productCard).find("h5")
        productTitle.text(product.item_name)
        const description = $(productCard).find("p.product-description")
        description.text(product.item_description)
        const cartButton = $(productCard).find(".cartBtn")
        cartButton.attr("data-cartbutton", index)
        const productPrice = $(productCard).find("span")
        productPrice.text(product.price)
    });
})