var inputs = document.querySelectorAll("div.field input[type=text]");
for (var i  = 0; i < inputs.length; ++i) {
  var input = inputs[i]
  if(/^http(s?):\/\//.test(input.value)) {
    var link = document.createElement("a");
    link.href = input.value;
    link.textContent = ">>>"
    input.parentElement.appendChild(link);
  }
};
