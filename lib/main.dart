import 'package:earsive/e-archive-folders/screens-folders/home-folder/home_pages.dart';
import 'package:flutter/material.dart';

import 'e-archive-folders/demand-refused-folder/demand_refused_page.dart';
import 'e-archive-folders/invoiced-issued-folder/invoice_issued.dart';
import 'e-archive-folders/screens-folders/business-guide-folder/business_guide_page.dart';
import 'e-archive-folders/screens-folders/e-archive-invoice-folder/e_archive_invoice_page.dart';
import 'e-archive-folders/screens-folders/edit-logo-signing-folder/edit_logo_signing_page.dart';
import 'e-archive-folders/screens-folders/home-folder/home_page.dart';
import 'e-archive-folders/screens-folders/incvoice-folder/add_invoice.dart';
import 'e-archive-folders/screens-folders/login-folder/login_page.dart';
import 'e-archive-folders/screens-folders/not-IBN-folder/notOrIBAN_info_page.dart';
import 'e-archive-folders/services-info-folder/service_info_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context)=>LoginPage(),
        "/home": (context) => HomePages(), 
        "/add-invoice": (context) => AddInvoice(),
        "/e-archive-bill":(context) => EArchiveInvoice(),
        "/invoice-issued":(context) => InvoiceIssued(),
        "/demand-refused":(context) => DemandRefused(),
        "/service-info":(context) => ServiceInfoPage(),
        "/not-iban-info":(context) => NotOrIBANInfoPage(),
        "/business-guide":(context) => BusinessGuidePage(),
        "/edit-logo-or-signing":(context) => EditLogoOrSigningPage(),
      },
      initialRoute: "/login",
    );
  }
}

