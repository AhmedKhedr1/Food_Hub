import 'package:flutter/material.dart';

class ToppingCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onAdd;

  const ToppingCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff3C2F2F),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top image container
          Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Image.network(imageUrl),
          ),

          // Bottom dark section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xff3C2F2F),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GestureDetector(
                  onTap: onAdd,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                      color: Color(0xffEF2A39),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, size: 17, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
