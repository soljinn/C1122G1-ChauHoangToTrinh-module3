package mvc.ss11.repository;

import mvc.ss11.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "a", "10", "b", "c"));
        productList.add(new Product(2, "a", "20", "b", "d"));
        productList.add(new Product(3, "a", "30", "b", "e"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product.getId(), product);
    }

    @Override
    public void update(Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == product.getId()){
                productList.set(i,productList.get(i));
            }
        }
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        Product product1 = null;
        for (int i = 0 ; i <= productList.size() ; i++) {
            if (productList.get(i).getId() == id){
                product1 = productList.get(i);
            }
        }
        return product1;
//        return productList.get(id);
    }

    @Override
    public void delete(int id) {
        for (Product product : productList
        ) {
            if (product.getId()== id){
                productList.remove(product);
        }
    }
}

    @Override
    public List<Product> search(String name) {
        List<Product> products = new ArrayList<>();
        for (Product product : productList) {
            if (product.getName().contains(name)) {
                products.add(product);
            }
        }
        return products;
    }


}