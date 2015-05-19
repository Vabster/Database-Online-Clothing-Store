/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package query;


/**
 * Used to set the shopping cart items
 * @author Dillon
 */
public class ShoppingCart 
{
    int id;
    String imagePath;
    String productName;
    String price;
    
    /**
     * Sets the id var
     * @param value 
     */
    public void setId(int value)
    {
        id = value;
    }
    
    /**
     * sets the imagePath var
     * @param value 
     */
    public void setImagePath(String value)
    {
        imagePath = value;
    }
    
    /**
     * Sets the productName var
     * @param value 
     */
    public void setProductName(String value)
    {
        productName = value;
    }
    
    /**
     * Sets the price var
     * @param value 
     */
    public void setPrice(String value)
    {
        price = value;
    }
    
    /**
     * Gets the id var
     * @return 
     */
    public int getId()
    {
        return id;      
    }
    
    /**
     * Gets the image path var
     * @return 
     */
    public String getImagePath()
    {
        return imagePath;      
    }
    
    /**
     * Gets the productName var
     * @return 
     */
    public String getProductName()
    {
        return productName;      
    }
    
    /**
     * Gets the price var
     * @return 
     */
    public String getPrice()
    {
        return price;      
    }
    
    
}
