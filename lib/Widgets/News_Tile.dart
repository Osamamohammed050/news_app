import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_Model.dart';
import 'package:news_app/Views/web_view_page.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0 , right: 8.0 , left: 8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewPage(url: articleModel.url),
                ),
              );
            },
            child: ClipRRect(
              
              borderRadius: BorderRadius.circular(10),
              child: articleModel.image == null
                  ? Image.asset(
                      'assets/images/Coming Soon .png',
                      
                      height: 200,
                      width: 360,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      articleModel.image!,
                      height: 200,
                      width: 360,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/Coming Soon .png',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
            ),
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            articleModel.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 139, 116, 116)),
          ),
        ],
      ),
    );
  }
}
