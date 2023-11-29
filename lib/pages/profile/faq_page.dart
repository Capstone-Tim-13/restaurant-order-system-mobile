import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  TextEditingController searchedFAQController = TextEditingController();
  bool isIconVisible = false;
  bool showResult = false;

  @override
  void dispose() {
    searchedFAQController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(context),
      body: faqPage(),
    );
  }

  showAppBar(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            "FAQ",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget faqPage() {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 16, right: 16, bottom: 37, top: 15),
          padding: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: primary2,
            borderRadius: BorderRadius.circular(32),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                spreadRadius: 1,
              )
            ],
          ),
          child: TextField(
            controller: searchedFAQController,
            style: poppins.copyWith(fontSize: 14, color: outline),
            textAlignVertical: TextAlignVertical.center,
            onChanged: (value) {
              value.isNotEmpty
                  ? setState(() {
                      isIconVisible = true;
                      showResult = true;
                    })
                  : setState(() => isIconVisible = false);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Image.asset(
                'assets/images/icons/search.png',
                width: 12,
              ),
              hintText: 'Cari pertanyaanmu disini',
              suffixIcon: isIconVisible
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isIconVisible = false;
                          showResult = false;
                        });
                        searchedFAQController.clear();
                      },
                      icon: const Icon(Icons.close),
                    )
                  : null,
            ),
          ),
        ),
        Expanded(
          child: showResult
              ? searchedFAQ(searchedFAQController.text)
              : showAllFAQ(),
        ),
      ],
    );
  }

  Widget showAllFAQ() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              itemCount: faqData.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, index) {
                var category = faqData.keys.toList()[index];
                var icon = faqData[category]['icon'];
                var faqs = faqData[category]['questions'];
                return showFAQ(category, faqs, icon);
              },
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                debugPrint('Pusat bantuan');
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                  color: primary4,
                  borderRadius: BorderRadius.circular(37),
                ),
                width: 143,
                height: 33,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/icons/question.png',
                          width: 20),
                      Text(
                        'Pusat Bantuan',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: primary2),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showFAQ(category, faqs, icon) {
    List faqsItem = [];
    for (int i = 0; i < faqs.length; i++) {
      faqsItem.add(faqs[i]);
    }

    return Column(
      children: [
        Row(
          children: [
            Image.asset(icon, width: 20),
            const SizedBox(width: 10),
            Text(
              category,
              style:
                  poppins.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        // Text(faqsItem.toString())
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: Column(
            children: faqsItem.map((faq) {
              return ExpansionTile(
                tilePadding: EdgeInsets.zero,
                childrenPadding: EdgeInsets.zero,
                title: Text(
                  faq[0],
                  style: poppins.copyWith(fontSize: 15),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      faq[1],
                      style: poppins.copyWith(fontSize: 15, color: outline),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget searchedFAQ(String searchTerm) {
    List<dynamic> relevantFAQs = [];

    faqData.forEach((category, faq) {
      var tags = faq['tags'] as List<String>;
      bool isRelevant =
          tags.any((tag) => searchTerm.toLowerCase().contains(tag));

      if (isRelevant) {
        var questions = faq['questions'] as List<List<String>>;
        relevantFAQs.addAll(questions);
      }
    });

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 18),
        child: Column(children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: Column(
              children: relevantFAQs.map((faq) {
                return ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  childrenPadding: EdgeInsets.zero,
                  title: Text(
                    faq[0],
                    style: poppins.copyWith(fontSize: 15),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        faq[1],
                        style: poppins.copyWith(fontSize: 15, color: outline),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          )
        ]),
      ),
    );
  }
}
