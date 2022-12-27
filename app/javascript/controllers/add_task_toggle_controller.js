import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-task-toggle"
export default class extends Controller {
  static targets = ["formfield","addbutton"]
  connect() {
    console.log("add-task-toggle connected")
  }
  showForm() {
    console.log("you clicked me")
    this.addbuttonTarget.innertText ="pij"
    this.formfieldTarget
  }
}
