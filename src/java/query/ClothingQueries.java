
package query;

/**
 * This class is used to query the parameters set by the users
 * on each of the clothing pages.
 */
public class ClothingQueries 
{
    String minPrice;
    String maxPrice;
    String color;
   /**
    * Sets the price
    * @param value 
    */
    public void setMinPrice(String value)
    {
        System.out.println("setminPrice = " + value);
        if (value.equals(""))
        {
            minPrice = "0";
        }
        else
        {
            minPrice = value;
        }
    }
    /**
     * Sets maxPrice
     * @param value 
     */
    public void setMaxPrice(String value)
    {
        System.out.println("setMaxPrice = " + value);
        if (value.equals(""))
        {           
            maxPrice = "50";
        }
        else
        {
           maxPrice = value;
        }
    }
    
    /**
     * Sets the color variable
     * @param value 
     */
    public void setColor(String value)
    {
        color = value;
    }
    
    /**
     * Gets the min price
     * @return 
     */
    public String getMinPrice()
    {
        if(minPrice == null)
        {
            return "0";
        }
        else
        {
            return minPrice;
        }
    }
    /**
     * Gets the max price
     * @return 
     */
    public String getMaxPrice()
    {
        if(minPrice == null)
        {
            return "50";
        }
        else
        {
            return maxPrice;
        }
    }
    /**
     * Gets the color
     * @return 
     */
    public String getColor()
    {
        return color;
    }
    
}
