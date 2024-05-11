import {Component, OnDestroy, OnInit} from '@angular/core';
import {UserService} from "../../services/user.service";
import {ProductService} from "../../services/product.service";
import {JwtResponse} from "../../response/JwtResponse";
import {Subscription} from "rxjs";
import {ActivatedRoute} from "@angular/router";
import {CategoryType} from "../../enum/CategoryType";
import {ProductStatus} from "../../enum/ProductStatus";
import {ProductInfo} from "../../models/productInfo";
import {Role} from "../../enum/Role";
import { Router } from '@angular/router';

@Component({
    selector: 'app-product.list',
    templateUrl: './product.list.component.html',
    styleUrls: ['./product.list.component.css']
})
export class ProductListComponent implements OnInit, OnDestroy {

    constructor(private userService: UserService,
                private productService: ProductService,
                private route: ActivatedRoute,
                private router: Router) {
    }

    Role = Role;
    currentUser: JwtResponse;
    page: any;
    CategoryType = CategoryType;
    ProductStatus = ProductStatus;
    private querySub: Subscription;

    ngOnInit() {
        this.querySub = this.route.queryParams.subscribe(() => {
            this.update();
        });

        this.currentUser = this.userService.currentUserValue;
    }

    ngOnDestroy(): void {
        this.querySub.unsubscribe();
    }

    update() {
        if (this.route.snapshot.queryParamMap.get('page')) {
            const currentPage = +this.route.snapshot.queryParamMap.get('page');
            const size = +this.route.snapshot.queryParamMap.get('size');
            this.getProds(currentPage, size);
        } else {
            this.getProds();
        }
    }

    getProds(page: number = 1, size: number = 5) {
        this.productService.getAllInPage(+page, +size)
            .subscribe(page => {
                this.page = page;
            });

    }


    remove(productInfos: ProductInfo[], productInfo) {
        this.productService.delete(productInfo).subscribe(_ => {
                productInfos = productInfos.filter(e => e.productId != productInfo);
            },
            err => {
            });
    }

    delete(productInfos: ProductInfo[], productInfo: ProductInfo) {
        this.productService.delete(productInfo).subscribe({
          next: (response) => {
            console.log("Product deleted successfully:", response);
      
            const index = productInfos.indexOf(productInfo);
            if (index > -1) {
              productInfos.splice(index, 1);
            }
      
            this.router.navigate(['/seller']);
          },
          error: (error) => {
            if (error.status === 404) {
              console.error("Product not found:", error);
            } else {
              console.error("Failed to delete product:", error);
            }
          },
        });
      }
      
}
