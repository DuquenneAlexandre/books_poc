window.search_authors = function(e) {
  var element = document.getElementById("results_authors_search");
  while (element.firstChild) {
    element.removeChild(element.firstChild);
  }
  const tok = document.head.querySelector("[name='csrf-token']").content
  const auht_tok = {"authenticity_token": tok, "author_name": e.value}
  fetch("/search_authors", {
  method: 'POST',
  headers:  {
  "Content-Type": "application/json",
  "Accept": "application/json"
},
  body: JSON.stringify(auht_tok)})
    .then((data) => {
      const here = data.text()
      here.then((value) => {
        array_parse(JSON.parse(value))
      });
    });
}

  function add_div(arg) {
    var node = document.createElement("DIV");
    var textnode = document.createTextNode(arg);
    node.appendChild(textnode);
    document.getElementById("results_authors_search").appendChild(node);
  }

  function array_parse(authors_arr) {
    authors_arr.forEach(function(item, index, array) {
      add_div(item.book_name)
    });
  }
