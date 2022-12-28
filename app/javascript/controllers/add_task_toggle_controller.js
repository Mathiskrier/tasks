import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-task-toggle"
export default class extends Controller {
  static targets = ["formfield","addbutton"]
  connect() {
    console.log("add-task-toggle connected")
  }
  showForm() {
    console.log("you clicked me")
    // if (this.addbuttonTarget.innerText == "+") {
    //   this.addbuttonTarget.innerText = "-"
    //   this.formfieldTarget.style.display = "none"

    // } else {
    //   this.addbuttonTarget.innerText = "+"
    //   this.formfieldTarget.style.display = "block"
    // }
  }
}
