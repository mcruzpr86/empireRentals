$(document).ready(function() {
    const customerCart = getCustomerCart()
    console.log(customerCart)
})



function getCustomerCart() {
    let customerCart =JSON.parse(localStorage.getItem("customerCart"))
    if (!customerCart) {
        console.log("your cart is empty go buy something")
        return false
    }else {
        return customerCart
    }
}