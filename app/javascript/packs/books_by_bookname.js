window.search_books = function(e) {
  var element = document.getElementById("results_books_search");
  while (element.firstChild) {
    element.removeChild(element.firstChild);
  }
  const tok = document.head.querySelector("[name='csrf-token']").content
  const auht_tok = {"authenticity_token": tok, "book_name": e.value}
  fetch("/querry_books", {
  method: 'POST',
  headers:  {
  "Content-Type": "application/json",
  "Accept": "application/json"
},
  body: JSON.stringify(auht_tok)})
    .then((data) => {
      const here = data.text()
      here.then((value) => {
        array_parse2(JSON.parse(value))
      });
    });
}

function add_div2(arg) {
  var node = document.createElement("DIV");
  var textnode = document.createTextNode(arg);
  node.appendChild(textnode);
  document.getElementById("results_books_search").appendChild(node);
}

function array_parse2(authors_arr) {
  authors_arr.forEach(function(item, index, array) {
    add_div2(item.book_name)
  });
}
