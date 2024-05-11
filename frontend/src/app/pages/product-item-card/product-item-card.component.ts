import { Component, Input, OnInit } from "@angular/core";
import { Route, Router } from "@angular/router";
import { ProductInfo } from "src/app/models/productInfo";

@Component({
  selector: "app-product-item-card",
  templateUrl: "./product-item-card.component.html",
  styleUrls: ["./product-item-card.component.css"],
})
export class ProductItemCardComponent implements OnInit {
  @Input() productInfo: ProductInfo;
  @Input() category: boolean;

  constructor(private router: Router) {}

  ngOnInit() {}

  seeDetailsProduct() {
    this.router.navigate(["/product/" + this.productInfo.productId]);
  }
}
