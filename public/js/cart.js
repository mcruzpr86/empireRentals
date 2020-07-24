$(document).ready(function() {
    let customerCart =JSON.parse(localStorage.getItem("customerCart"))
    if (!customerCart) {
        console.log("your cart is empty go buy something")
        return false
    }else {
        console.log("you have items in your cart")
        return customerCart
    }
})
