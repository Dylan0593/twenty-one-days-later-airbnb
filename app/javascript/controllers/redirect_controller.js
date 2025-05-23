import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="redirect"
export default class extends Controller {
  connect() {
    const url = this.element.dataset.url
    if (url) {
      Turbo.visit(url)
    }


  }
}
