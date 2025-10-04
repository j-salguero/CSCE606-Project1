import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("click", this.closeOnBackdropClick.bind(this))
    this.element.showModal()
  }

  disconnect() {
    this.element.removeEventListener("click", this.closeOnBackdropClick.bind(this))
    this.element.close()
    this.element.remove()
  }

  closeOnBackdropClick(event) {
    if (event.target === this.element) {
      this.element.close()
      this.element.remove()
    }
  }
}
