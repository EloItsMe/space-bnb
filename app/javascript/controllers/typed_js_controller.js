import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  static targets = ["subtitle" ]

  connect() {
    new Typed(this.subtitleTarget, {
      strings: ["Explore the universe","Rented your dream planet"],
      typeSpeed: 40,
      backSpeed: 40,
      backDelay: 2000,
      startDelay: 400,
      loop: true,
      showCursor: true
    })
  }
}
