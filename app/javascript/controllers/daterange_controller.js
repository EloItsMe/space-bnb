import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="daterange"
export default class extends Controller {
  static targets = [ "date", "dateinput", "totalprice" ]

  connect() {
  }

  datecalculator() {
    this.dateinputTarget.value = this.dateTarget.value
    this.#totalpricecalculator()
  }

  #totalpricecalculator() {
    const startdate = Date.parse(this.dateTarget.value[0]);
    const enddate = Date.parse(this.dateTarget.value[1]);

    const oneDay = 1000 * 60 * 60 * 24;

    const datebetween = ((enddate - startdate) / oneDay )+ 1;
    const totalprice = datebetween * this.totalpriceTarget.dataset.price;
    if (isNaN(totalprice)) {
      console.log(this.totalpriceTarget.dataset.price);
      this.totalpriceTarget.innerText = this.totalpriceTarget.dataset.price;
    } else {
      this.totalpriceTarget.innerText = totalprice;
    }
  }
}
