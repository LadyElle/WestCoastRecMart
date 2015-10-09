using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using WestCoastRecMart.Models.Repository;
using WestCoastRecMart.Models;
using WestCoastRecMart.Pages.Helpers;

namespace WestCoastRecMart.Pages
{
    public partial class CategoryList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Repository repo = new Repository();
                int productId;
                if (int.TryParse(Request.Form["remove"], out productId))
                {
                    Product productToRemove = repo.Products
                    .Where(p => p.ProductID == productId)
                    .FirstOrDefault();
                    if (productToRemove != null)
                    {
                        SessionHelper.GetCart(Session).RemoveLine(productToRemove);
                    }
                }
            }
        }

        protected IEnumerable<string> GetCategories()
        {
            return new Repository().Products.Select(p => p.Category).Distinct().OrderBy(x => x);
        }

        protected string CreateHomeLinkHTML()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            return string.Format("<a href='{0}'>Home</a>", path);
        }
        protected string CreateLinkHTML(string category)
        {
            string selectedCategory = (string)Page.RouteData.Values["category"] ?? Request.QueryString["category"];
            string path = RouteTable.Routes.GetVirtualPath(null, null, new RouteValueDictionary() { { "category", category }, 
            { "page", "1" } }).VirtualPath;
            return string.Format("<a href='{0}' {1}>{2}</a>", 
                path, category == selectedCategory ? "class='selected'":"",category);
        }
    }
}