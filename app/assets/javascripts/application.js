//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

// https://stackoverflow.com/questions/61880076/is-there-any-way-to-disable-image-attachment-part-for-action-text-in-rails-6 を参考にファイルのアップロードを無効化
window.addEventListener("trix-file-accept", function (event) {
    event.preventDefault()
    alert("ファイルのアップロードはサポートしていません...")
})