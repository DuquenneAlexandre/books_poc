// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import('packs/styles/index.css');
require("packs/books_by_authors_name")
require("packs/books_by_bookname")


Rails.start()
Turbolinks.start()
ActiveStorage.start()


/* var toto = Rails.ajax({
url: "/ajax_index",
type: "get",
data: "",
success: function(data) {},
error: function(data) {}
})
console.log(toto)

function get_that_it() {
  console.log("toto")
} */
