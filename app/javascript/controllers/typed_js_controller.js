import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  static targets = [ "title", "subtitle" ]

  connect() {
    new Typed(this.titleTarget, {
      strings: ["SpaceBnB"],
      typeSpeed: 70,
      startDelay: 1000,
      loop: false,
      showCursor: false
    })

    new Typed(this.subtitleTarget, {
      strings: ["Explore the universe"],
      typeSpeed: 30,
      startDelay: 2000,
      loop: false,
      showCursor: false
    })
  }
}
