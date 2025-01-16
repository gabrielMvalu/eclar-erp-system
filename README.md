# eclar-erp-system
A scalable, modular ERP system for managing production, sales, and logistics, tailored for the "eclair" liquid detergent business. Designed for flexibility, future integration with a digital twin, and potential migration to cloud infrastructure.


## Overview
**eclar-erp-system** is a modular and scalable Enterprise Resource Planning (ERP) solution developed for managing the operations of the "eclar" liquid detergent business. The system is designed with future scalability and digitalization in mind, enabling smooth integration of production processes, online sales, logistics, and more.

## Features
- **Product Management**: Efficient handling of product catalogs, stock levels, and pricing.
- **Order Processing**: Automated workflows for online order management.
- **Reporting**: Support for customizable financial and operational reports.
- **Digital Twin Readiness**: Built to integrate IoT sensors for real-time monitoring and simulation.
- **Cloud Migration**: Prepared for smooth migration to Google Cloud or similar platforms.
- **Logistics Support**: AWB tracking and shipping integration.
- **Modular Architecture**: Easily extendable to include new features or integrate with third-party systems.

## Getting Started
### Prerequisites
- **Development Environment**: VSCode or any compatible IDE.
- **Database**: PostgreSQL (preferred) or MySQL.
- **Version Control**: Git and GitHub.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/gabrielMvalu/eclar-erp-system.git
   ```
2. Set up the database:
   - Use the provided SQL scripts to create the necessary tables.
   - Update the database connection parameters in the configuration file.
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Run the application locally:
   ```bash
   python manage.py runserver
   ```

## Repository Structure
```
/erp-system
|-- /database
|   |-- create_tables.sql    # SQL scripts for database setup
|
|-- /modules
|   |-- products             # Product management module
|   |-- orders               # Order processing module
|
|-- /logs                    # Application logs
|
|-- README.md                # Documentation
```

## Contribution Guidelines
We welcome contributions to enhance the functionality of this ERP system. Please follow the steps below:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/new-feature
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add new feature"
   ```
4. Push the branch:
   ```bash
   git push origin feature/new-feature
   ```
5. Create a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
For inquiries or support, please contact us at:
- **Email**: office@castemill.com
- **Website**: [eclair-erp-system]
