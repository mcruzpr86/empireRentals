console.log("hello")

let cartItem = {
    itemName: $("#product-name"),
    price: $("#priceOfItem")
}

let cartItem_string = JSON.stringify(cartItem)




function toLocalStorage(key, value) {
    let storageArray = JSON.parse(localStorage.getItem(key))
    console.log(storageArray)
    if (!storageArray){
        storageArray = []
       
    }
    console.log(storageArray)
    
    storageArray.push(value)
    
    localStorage.setItem(key, JSON.stringify(storageArray))
    
}

$(".cartBtn").on("click", function() {
    const cardNumber = $(this).data("cartbutton")
    const productCard = $(`div#card${cardNumber}`)
    const productTitle = $(productCard).find("h5").text()
    toLocalStorage("customerCart", productTitle)
    console.log(productTitle)
})


$.get("/api/products/category/3", function(data) {
    console.log(data.Products)

    data.Products.forEach((product, index) => {
        const productCard = $(`#card${index}`)
        const productTitle = $(productCard).find("h5")
        productTitle.text(product.item_name)
        const description = $(productCard).find("p")
        description.text(product.item_description)
        const cartButton = $(productCard).find(".cartBtn")
        cartButton.attr("data-cartbutton", index)
    });
})
