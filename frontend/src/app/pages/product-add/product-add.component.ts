import { Component, OnInit } from '@angular/core';
import { ProductInfo } from '../../models/productInfo';
import { ProductService } from '../../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-product-add',
  templateUrl: './product-add.component.html',
  styleUrls: ['./product-add.component.css']
})
export class ProductAddComponent implements OnInit {
  
  product: ProductInfo = new ProductInfo(); 

  constructor(
    private productService: ProductService,
    private router: Router
  ) {}

  ngOnInit(): void {
  
  }

  onSubmit(): void {
    if (!this.isFormValid()) {
      return;
    }
    this.addNewProduct();
  }

  isFormValid(): boolean {
    return true;
  }

  addNewProduct(): void {
    this.productService.addProduct(this.product).subscribe({
      next: (response) => {
        console.log("Product added successfully:", response);
        this.router.navigate(['/seller']); 
      },
      error: (error) => {
        console.error("Error adding product:", error);
      }
    });
  }
}
