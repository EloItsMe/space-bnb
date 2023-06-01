import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="daterange"
export default class extends Controller {
  static targets = [ "date", "dateinput" ]

  connect() {
  }

  datecalculator() {
    console.log(this.dateinputTarget.value);
    this.dateinputTarget.value = this.dateTarget.value
  }

}
