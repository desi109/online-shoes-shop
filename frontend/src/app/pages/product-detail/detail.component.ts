import {Component, OnInit} from '@angular/core';
import {ProductService} from '../../services/product.service';
import {ActivatedRoute, Router} from '@angular/router';
import {CartService} from '../../services/cart.service';
import {CookieService} from 'ngx-cookie-service';
import {ProductInOrder} from '../../models/ProductInOrder';
import {ProductInfo} from '../../models/productInfo';
import { UserService } from 'src/app/services/user.service';
import { JwtResponse } from 'src/app/response/JwtResponse';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {
  title: string;
  count: number;
  productInfo: ProductInfo;
  selectedSize: number | null = null;  // Variable to track selected size
  private currentUser: JwtResponse;

  constructor(
      private productService: ProductService,
      private cartService: CartService,
      private cookieService: CookieService,
      private route: ActivatedRoute,
      private router: Router,
      private userService: UserService
  ) {
    this.userService.currentUser.subscribe((user) => (this.currentUser = user));
  }

  ngOnInit() {
    this.getProduct();
    this.title = 'Product Detail';
    this.count = 1;
  }

  selectSize(size: number) {
    this.selectedSize = size;  // Update the selected size when a button is clicked
  }

  getProduct(): void {
    const id = this.route.snapshot.paramMap.get('id');
    this.productService.getDetail(id).subscribe(
        prod => {
          this.productInfo = prod;
        },
        _ => console.log('Get Cart Failed')
    );
  }

  addToCart() {
    if (this.selectedSize === null) {
      alert('Please select a size first.');  // Show alert if no size is selected
      return;
    } else {
      // Add to cart logic goes here
      if (!this.currentUser) {
        this.router.navigate(["/login"]);
      } else {
      console.log('Product added to cart with size:', this.selectedSize);
      this.cartService
        .addItem(new ProductInOrder(this.productInfo, this.count), this.selectedSize)
        .subscribe(
            res => {
              if (!res) {
                console.log('Add Cart failed' + res);
                throw new Error();
              }
              this.router.navigateByUrl('/cart');
            },
            _ => console.log('Add Cart Failed')
        );
      }
    }
  }

  validateCount() {
    console.log('Validate');
    const max = this.productInfo.productStock;
    if (this.count > max) {
      this.count = max;
    } else if (this.count < 1) {
      this.count = 1;
    }
  }
}
