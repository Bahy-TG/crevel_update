import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../widgets/contact_header_widget.dart';
import '../../../widgets/contact_information_widget.dart';
import '../../../widgets/inquiry_form_widget.dart';


class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});
  static String routeName = '/contact_screen';
  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String? _selectedService;
  final List<String> _services = [
    'Web Development',
    'Mobile App Design',
    'UI-UX Design',
    'Branding & Identity',
    'Digital Marketing',
  ];

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not launch $urlString')));
      }
      print('Could not launch $urlString');
    }
  }

  void _handleSendInquiry() {
    if (_formKey.currentState!.validate()) {
      if (_selectedService == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select a service of interest.'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      final inquiryData = {
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'serviceOfInterest': _selectedService,
        'phone': _phoneController.text.isNotEmpty
            ? _phoneController.text
            : null,
        'email': _emailController.text,
        'message': _messageController.text,
      };
      print('Inquiry Data: $inquiryData'); // TODO: API Integration
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Inquiry sent successfully! (Simulated)'),
          backgroundColor: AppColors.lightPrimary,
        ),
      );
      _formKey.currentState!.reset();
      _firstNameController.clear();
      _lastNameController.clear();
      _phoneController.clear();
      _emailController.clear();
      _messageController.clear();
      setState(() {
        _selectedService = null;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please correct the errors in the form.'),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 900;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Contact Us'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContactHeaderWidget(),
            const SizedBox(height: 30),
            isWideScreen
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: InquiryFormWidget(
                          formKey: _formKey,
                          firstNameController: _firstNameController,
                          lastNameController: _lastNameController,
                          phoneController: _phoneController,
                          emailController: _emailController,
                          messageController: _messageController,
                          selectedService: _selectedService,
                          services: _services,
                          onServiceChanged: (value) {
                            setState(() {
                              _selectedService = value;
                            });
                          },
                          onSendInquiry: _handleSendInquiry,
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        flex: 1,
                        child: ContactInformationWidget(
                          onLaunchUrl: _launchUrl,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      InquiryFormWidget(
                        formKey: _formKey,
                        firstNameController: _firstNameController,
                        lastNameController: _lastNameController,
                        phoneController: _phoneController,
                        emailController: _emailController,
                        messageController: _messageController,
                        selectedService: _selectedService,
                        services: _services,
                        onServiceChanged: (value) {
                          setState(() {
                            _selectedService = value;
                          });
                        },
                        onSendInquiry: _handleSendInquiry,
                      ),
                      const SizedBox(height: 40),
                      ContactInformationWidget(
                        onLaunchUrl: _launchUrl,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
