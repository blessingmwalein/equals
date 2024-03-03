import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/layouts/app_layout.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/models/recent_application_model.dart';
import 'package:equals_online_app/util/activity_card.dart';
import 'package:equals_online_app/util/current_loan.dart';
import 'package:equals_online_app/util/deal_note_card.dart';
import 'package:equals_online_app/util/outloined_date_picker.dart';
import 'package:equals_online_app/util/payment_shedule.dart';
import 'package:equals_online_app/util/recent_applications.dart';
import 'package:equals_online_app/util/statement.dart';
import 'package:equals_online_app/util/statement_details.dart';
import 'package:equals_online_app/util/terms_check_box.dart';
import 'package:equals_online_app/util/total_amount_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SingleProductPage extends StatefulWidget {
  final Product product;

  const SingleProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late DateTime _startDate;
  late DateTime _endDate;

  final List<Application> applications = [
    Application(date: '01 Feb 2024', amount: '\$124.00', status: 'PENDING FCB'),
    Application(date: '02 Feb 2024', amount: '\$124.00', status: 'PENDING SSB'),
    Application(date: '03 Feb 2024', amount: '\$124.00', status: 'COMPLETED'),
    Application(
        date: '04 Feb 2024', amount: '\$124.00', status: 'PENDING TERMS'),
  ];

  @override
  void initState() {
    super.initState();
    // Set up the TabController

    _tabController = TabController(length: 5, vsync: this);
    _startDate = DateTime.now();
    _endDate = DateTime.now().add(Duration(days: 7));
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _endDate) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      title: widget.product.name,
      bottom: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: const [
          Tab(text: 'Loan Details'),
          Tab(text: 'Repayment Schedule'),
          Tab(text: 'Applications'),
          Tab(text: 'Deal Note'),
          Tab(text: 'Statement'),
        ],
      ),
      child: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const LoanStatementDetails(),
                  // TotalAmountCard(product: widget.product),
                  CurrentLoanCard(product: widget.product),
                  // ActivityCard(product: widget.product),
                  // RecentApplications(product: widget.product),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: OutlinedDatePicker(
                            labelText: 'Start Date',
                            selectedDate: _startDate,
                            selectDate: (date) => _selectStartDate(context),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: OutlinedDatePicker(
                            labelText: 'End Date',
                            selectedDate: _endDate,
                            selectDate: (date) => _selectStartDate(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: 80,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0),
                              // border: Border.all(
                              //   color: Colors.black.withOpacity(0.8),
                              // ),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.email_outlined),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Container(
                            width: 80,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0),
                              // border: Border.all(
                              //   color: Colors.black.withOpacity(0.8),
                              // ),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.download),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                Text(
                                  'Download',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        //download statement
                      ],
                    ),
                  ),
                  const PaymentSchedule(),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // TotalAmountCard(product: widget.product),
                  // CurrentLoanCard(product: widget.product),
                  // ActivityCard(product: widget.product),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: applications.length,
                    itemBuilder: (context, index) {
                      return RecentApplications(
                          application: applications[index]);
                    },
                  )
                ],
              ),
            ),
          ),
          const SingleChildScrollView(
            child: DealNoteCard(),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OutlinedDatePicker(
                          labelText: 'Start Date',
                          selectedDate: _startDate,
                          selectDate: (date) => _selectStartDate(context),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: OutlinedDatePicker(
                          labelText: 'End Date',
                          selectedDate: _endDate,
                          selectDate: (date) => _selectStartDate(context),
                        ),
                      ),

                      //download statement
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 80,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0),
                            // border: Border.all(
                            //   color: Colors.black.withOpacity(0.8),
                            // ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.email_outlined),
                                color: Colors.white.withOpacity(0.8),
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          width: 80,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0),
                            // border: Border.all(
                            //   color: Colors.black.withOpacity(0.8),
                            // ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.download),
                                color: Colors.white.withOpacity(0.8),
                              ),
                              Text(
                                'Download',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //download statement
                    ],
                  ),
                ),
                const Statement(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
