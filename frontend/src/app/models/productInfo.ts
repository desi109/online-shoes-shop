import {ProductInOrder} from "./ProductInOrder";

export class ProductInfo {
    productId: string;
    productName: string;
    productPrice: number;
    productStock: number;
    productDescription: string;
    productIcon: string;
    productStatus: number; // 0: onsale 1: offsale
    categoryType: number;
    createTime: string;
    updateTime: string;


    constructor(
        productInOrder?: ProductInOrder, 
        productId?: string,
        productName?: string,
        productPrice?: number,
        productStock?: number,
        productDescription?: string,
        productIcon?: string,
        categoryType?: number,
        productStatus?: number
      ) {
        if (productInOrder) {
          this.productId = productInOrder.productId || '';
          this.productName = productInOrder.productName || '';
          this.productPrice = productInOrder.productPrice || 0;
          this.productStock = productInOrder.productStock || 0;
          this.productDescription = productInOrder.productDescription || '';
          this.productIcon = productInOrder.productIcon || '';
          this.categoryType = productInOrder.categoryType || 0;
        } else {
          this.productId = productId; 
          this.productName = productName;
          this.productPrice = productPrice;
          this.productStock = productStock;
          this.productDescription = productDescription;
          this.productIcon = productIcon;
          this.categoryType = categoryType;
          this.productStatus = productStatus;
        }
      }
}

