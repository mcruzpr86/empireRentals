const emailAddress = $("#modalUserEmail")

$(".modalBtn").on("submit", emailSubmit())


function emailSubmit(event) {
    event.preventDefault();
    if (!emailAddress.val().trim()){
        return;
    }
    postEmails({
        email: emailAddress.val().trim()
    })
}

function postEmails(userEmail) {
    $.post("/api/emails", userEmail)
}