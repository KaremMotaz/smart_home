import 'package:flutter/material.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';

class GetAllDomainsViewBody extends StatelessWidget {
  const GetAllDomainsViewBody({
    super.key,
    required this.getAllDomainsResponseBody,
  });

  final GetAllDomainsResponseBody getAllDomainsResponseBody;

  @override
  Widget build(BuildContext context) {
    final domains = getAllDomainsResponseBody.domains;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: domains.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          final domain = domains[index];
          return DomainCard(
            name: domain.name,
            alias: domain.alias,
          );
        },
      ),
    );
  }
}

class DomainCard extends StatelessWidget {
  const DomainCard({
    super.key,
    required this.name,
    required this.alias,
  });

  final String name;
  final String alias;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.home_rounded,
                size: 48,
                color: Colors.blue,
              ),
              const SizedBox(height: 12),
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                alias,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
