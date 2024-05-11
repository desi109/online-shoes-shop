package com.shop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import lombok.Data;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.UpdateTimestamp;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Data
@DynamicUpdate
public class ProductInfo implements Serializable {
    @Id
    private String productId;

    @NotNull
    private String productName;

    @NotNull
    private BigDecimal productPrice;

    @NotNull
    private Integer productSize;

    @NotNull
    @Min(0)
    private Integer productStock;

    private String productDescription;

    private String productIcon;

    @ColumnDefault("0")
    private Integer productStatus;

    @ColumnDefault("0")
    private Integer categoryType;

    @CreationTimestamp
    private Date createTime;
    @UpdateTimestamp
    private Date updateTime;

    public ProductInfo() {
    }
}
