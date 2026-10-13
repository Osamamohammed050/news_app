import 'package:flutter/material.dart';
import 'package:news_app/Services/theme_manager.dart';
import 'package:news_app/Widgets/Categories_List_View.dart';
import 'package:news_app/Widgets/Category_Text.dart';
import 'package:news_app/Widgets/News_List_View_Builder.dart';
import 'package:news_app/Widgets/Trending_News.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // يمكنك تخزين لستة الأخبار هنا إذا كنت تجلبها في الصفحة الرئيسية، 
  // أو الاعتماد على تدوير الـ Future/Builder الخاص بك.
  List<dynamic> articles = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'News',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 136, 0),
              ),
            ),
          ],
        ),
        centerTitle: true,
        // يمكنك إضافة زر الدارك مود هنا في الـ actions بسهولة
        actions: [
          IconButton(
            icon: Icon(
              ThemeManager.themeNotifier.value == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              ThemeManager.toggleTheme();
              setState(() {}); // لتحديث شكل الأيقونة فوراً
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        strokeWidth: 3.0,
        onRefresh: () async {
          // محاكاة وقت تحميل بسيط
          await Future.delayed(const Duration(milliseconds: 600));

          setState(() {
            // إذا كانت الليست تحتوي على عناصر، سيتم تدويرها
            if (articles.isNotEmpty) {
              articles.shuffle();
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers:  [
              SliverToBoxAdapter(child: CategoryText()),
              SliverToBoxAdapter(child: CategegoriesListView()),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(child: Trending_News()),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              NewsListViewBuilder(category: 'general'),
            ],
          ),
        ),
      ),
    );
  }
}