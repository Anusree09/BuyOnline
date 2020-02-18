import Customer;
import Collection;
import javax.ejb.EJB;
import session.CustomerFacade;

public class ProductBean {

    String categoryId;
    String date;

    @EJB
    private CustomerFacade customerFacade;

    Collection<Customer> customers;

    public ProductBean() {
    }

    public String getCategoryId() {
        return categoryId;
    }

    public String getDate() {
        return date;
    }

    public void setCategoryId(String category) {
        String myStr = category.replaceAll("[^\\d]", "");
        this.categoryId = myStr;

    }

    public void setDate(String date) {

    }

    public static void main(String[] args) {
        ProductBean bean = new ProductBean();
        bean.setCategoryId("Customer[ id=1 ]");
        System.out.println(bean.categoryId);
        bean.setCategoryId("Customer[ id=1 ]");
        System.out.println(bean.categoryId);
        bean.setCategoryId("Customer[ id=5 ]");
        System.out.println(bean.categoryId);
    }
}