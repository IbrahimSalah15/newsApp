
import '../models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = [];

  //1
  CategoryModel categoryModel = CategoryModel();
   categoryModel.categoryName = "Business";
   categoryModel.imageUrl = "https://www.primeum.com/hubfs/D%C3%A9finition-performance-commerciale.jpg";
   category.add(categoryModel);

   //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTevelNGtJlgi0hgjcO37Ahtw92NpETBLmL4w&usqp=CAU";
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://thumbs.dreamstime.com/z/tv-studio-news-room-blye-background-news-studio-studio-background-newsroom-bakground-perfect-backdrop-any-green-screen-220337732.jpg";
  category.add(categoryModel);

   //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://online.hbs.edu/Style%20Library/api/resize.aspx?imgpath=/online/PublishingImages/blog/health-care-economics.jpg&w=1200&h=630";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://static.theprint.in/wp-content/uploads/2019/11/science.jpg";
  category.add(categoryModel);

 //6
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://www.totalsportal.com/wp-content/uploads/2021/12/Sports-Pictures-1200x715.jpg";
  category.add(categoryModel);

  //7
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://www.globalfocusmagazine.com/wp-content/uploads/2020/02/Engaging_with_technology-scaled.jpg";
  category.add(categoryModel);

 return category;


}