import { Controller } from "@hotwired/stimulus"

export class HelloController extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
