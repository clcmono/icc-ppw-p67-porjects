-- Datos de prueba para Evaluación Técnica 4
-- Sistema de Gestión de Personas y Proyectos de Software

-- ========================================
-- PERSONS: 10 personas (8 activas, 2 inactivas)
-- ========================================

INSERT INTO persons (id, first_name, last_name, email, bio, profession, location, active) VALUES 
(1, 'Juan', 'Pérez', 'juan.perez@email.com', 'Desarrollador full-stack con 5 años de experiencia en tecnologías web modernas. Especializado en Spring Boot y Angular.', 'Full-Stack Developer', 'Quito, Ecuador', 'S'),
(2, 'María', 'González', 'maria.gonzalez@email.com', 'Backend developer enfocada en arquitecturas de microservicios y cloud computing. Actualmente sin proyectos asignados.', 'Backend Developer', 'Guayaquil, Ecuador', 'S'),
(3, 'Carlos', 'Rodríguez', 'carlos.rodriguez@email.com', 'Arquitecto de software con expertise en sistemas distribuidos y alta disponibilidad. Mentor de equipos de desarrollo.', 'Software Architect', 'Cuenca, Ecuador', 'S'),
(4, 'Ana', 'Martínez', 'ana.martinez@email.com', 'Frontend specialist con pasión por UX/UI. Creadora de interfaces intuitivas y accesibles para aplicaciones empresariales.', 'Frontend Developer', 'Ambato, Ecuador', 'S'),
(5, 'Luis', 'Sánchez', 'luis.sanchez@email.com', 'DevOps engineer y cloud specialist. Experto en automatización, CI/CD, Kubernetes y AWS.', 'DevOps Engineer', 'Loja, Ecuador', 'S'),
(6, 'Patricia', 'Ramírez', 'patricia.ramirez@email.com', 'Mobile developer especializada en aplicaciones híbridas. Experiencia en React Native, Flutter y desarrollo nativo.', 'Mobile Developer', 'Machala, Ecuador', 'S'),
(7, 'Roberto', 'Torres', 'roberto.torres@email.com', 'Data engineer y especialista en big data. Desarrollo de pipelines de datos y soluciones de analytics.', 'Data Engineer', 'Ibarra, Ecuador', 'S'),
(8, 'Laura', 'Flores', 'laura.flores@email.com', 'Game developer indie con múltiples proyectos publicados. Especializada en Unity y Unreal Engine.', 'Game Developer', 'Riobamba, Ecuador', 'S'),
(9, 'Miguel', 'Castro', 'miguel.castro@email.com', 'Security engineer enfocado en aplicaciones web seguras. Pentester certificado y consultor de ciberseguridad.', 'Security Engineer', 'Manta, Ecuador', 'N'),
(10, 'Sofía', 'Morales', 'sofia.morales@email.com', 'QA automation engineer. Desarrollo de frameworks de testing y estrategias de quality assurance.', 'QA Engineer', 'Santo Domingo, Ecuador', 'N');

-- ========================================
-- CONTACT LINKS: 2-4 enlaces por persona
-- ========================================

-- Persona 1: Juan Pérez (4 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(1, 'GitHub', 'https://github.com/juanperez', 1),
(2, 'LinkedIn', 'https://linkedin.com/in/juanperez', 1),
(3, 'Portfolio', 'https://juanperez.dev', 1),
(4, 'Twitter', 'https://twitter.com/juanperez_dev', 1);

-- Persona 2: María González (2 enlaces) - SIN PROYECTOS
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(5, 'GitHub', 'https://github.com/mariagonzalez', 2),
(6, 'LinkedIn', 'https://linkedin.com/in/mariagonzalez', 2);

-- Persona 3: Carlos Rodríguez (4 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(7, 'GitHub', 'https://github.com/carlosrodriguez', 3),
(8, 'LinkedIn', 'https://linkedin.com/in/carlosrodriguez', 3),
(9, 'Website', 'https://carlosrodriguez.tech', 3),
(10, 'Medium', 'https://medium.com/@carlosrodriguez', 3);

-- Persona 4: Ana Martínez (3 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(11, 'GitHub', 'https://github.com/anamartinez', 4),
(12, 'LinkedIn', 'https://linkedin.com/in/anamartinez', 4),
(13, 'Behance', 'https://behance.net/anamartinez', 4);

-- Persona 5: Luis Sánchez (4 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(14, 'GitHub', 'https://github.com/luissanchez', 5),
(15, 'LinkedIn', 'https://linkedin.com/in/luissanchez', 5),
(16, 'Blog', 'https://luissanchez.cloud', 5),
(17, 'YouTube', 'https://youtube.com/@luissanchez', 5);

-- Persona 6: Patricia Ramírez (3 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(18, 'GitHub', 'https://github.com/patriciaramirez', 6),
(19, 'LinkedIn', 'https://linkedin.com/in/patriciaramirez', 6),
(20, 'Portfolio', 'https://patriciaramirez.app', 6);

-- Persona 7: Roberto Torres (4 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(21, 'GitHub', 'https://github.com/robertotorres', 7),
(22, 'LinkedIn', 'https://linkedin.com/in/robertotorres', 7),
(23, 'Kaggle', 'https://kaggle.com/robertotorres', 7),
(24, 'Website', 'https://robertotorres.data', 7);

-- Persona 8: Laura Flores (3 enlaces)
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(25, 'GitHub', 'https://github.com/lauraflores', 8),
(26, 'LinkedIn', 'https://linkedin.com/in/lauraflores', 8),
(27, 'Itch.io', 'https://lauraflores.itch.io', 8);

-- Persona 9: Miguel Castro (3 enlaces) - INACTIVO
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(28, 'GitHub', 'https://github.com/miguelcastro', 9),
(29, 'LinkedIn', 'https://linkedin.com/in/miguelcastro', 9),
(30, 'Website', 'https://miguelcastro.security', 9);

-- Persona 10: Sofía Morales (2 enlaces) - INACTIVO
INSERT INTO contact_links (id, name, url, person_id) VALUES 
(31, 'GitHub', 'https://github.com/sofiamorales', 10),
(32, 'LinkedIn', 'https://linkedin.com/in/sofiamorales', 10);

-- ========================================
-- PROJECTS: 5-10 proyectos por persona (excepto persona 2)
-- ========================================

-- Persona 1: Juan Pérez (8 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(1, 'E-Commerce Platform', 'Plataforma completa de comercio electrónico con sistema de pagos, inventario y gestión de usuarios. Incluye panel de administración y análisis de ventas.', 'Spring Boot, Angular, PostgreSQL, AWS, Stripe', 'Completed', 15000.00, '2023-01-15', '2023-06-30', 1, 'S'),
(2, 'CRM System', 'Sistema de gestión de relaciones con clientes. Automatización de procesos de ventas y seguimiento de leads.', 'Java, React, MySQL, Docker', 'Completed', 8500.00, '2023-03-10', '2023-07-20', 1, 'S'),
(3, 'Mobile Banking App', 'Aplicación móvil para gestión bancaria personal. Transferencias, pagos de servicios y consulta de movimientos.', 'React Native, Node.js, MongoDB', 'In Progress', 12000.00, '2023-09-01', NULL, 1, 'S'),
(4, 'Inventory Management', 'Sistema de gestión de inventarios para cadena de retail. Control de stock, alertas y reportes.', 'Spring Boot, Vue.js, Oracle', 'Completed', 6500.00, '2022-11-05', '2023-03-15', 1, 'S'),
(5, 'Social Network MVP', 'Red social especializada para comunidad de desarrolladores. Sistema de posts, likes y comentarios.', 'NestJS, Angular, PostgreSQL', 'In Progress', 9200.00, '2024-01-10', NULL, 1, 'S'),
(6, 'Booking Platform', 'Plataforma de reservas para hoteles y servicios turísticos. Integración con pasarelas de pago.', 'Spring Boot, React, MariaDB', 'Planned', 11000.00, '2024-03-01', NULL, 1, 'S'),
(7, 'Healthcare Portal', 'Portal de gestión de citas médicas y historiales clínicos. Sistema HIPAA compliant.', 'Java EE, Angular, SQL Server', 'Completed', 18500.00, '2022-06-15', '2023-02-28', 1, 'S'),
(8, 'Analytics Dashboard', 'Dashboard de análisis de datos empresariales con visualizaciones interactivas.', 'Python, Django, React, D3.js', 'Completed', 7800.00, '2023-05-20', '2023-09-10', 1, 'S');

-- Persona 2: María González (0 proyectos) - CASO ESPECIAL
-- NO SE INSERTAN PROYECTOS PARA ESTA PERSONA

-- Persona 3: Carlos Rodríguez (10 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(9, 'Microservices Architecture', 'Migración de monolito a arquitectura de microservicios. Incluye API Gateway, service discovery y circuit breakers.', 'Spring Cloud, Docker, Kubernetes, Redis', 'Completed', 25000.00, '2022-08-01', '2023-05-30', 3, 'S'),
(10, 'Real-Time Messaging System', 'Sistema de mensajería en tiempo real para aplicación empresarial. Soporte para chat grupal y archivos.', 'WebSocket, Redis, MongoDB, Node.js', 'Completed', 13500.00, '2023-02-15', '2023-08-20', 3, 'S'),
(11, 'Cloud Migration Project', 'Migración completa de infraestructura on-premise a AWS. Optimización de costos y alta disponibilidad.', 'AWS, Terraform, Jenkins, Python', 'Completed', 32000.00, '2022-10-01', '2023-06-15', 3, 'S'),
(12, 'API Management Platform', 'Plataforma de gestión y documentación de APIs empresariales. Rate limiting y analytics.', 'Kong, GraphQL, Node.js, PostgreSQL', 'In Progress', 16000.00, '2023-11-01', NULL, 3, 'S'),
(13, 'Event-Driven Architecture', 'Implementación de arquitectura basada en eventos usando Apache Kafka. Procesamiento asíncrono de datos.', 'Kafka, Spring Boot, Elasticsearch', 'Completed', 19500.00, '2023-03-10', '2023-10-25', 3, 'S'),
(14, 'Distributed Cache System', 'Sistema de caché distribuido para mejorar performance de aplicaciones de alto tráfico.', 'Redis Cluster, Hazelcast, Java', 'Completed', 9800.00, '2023-06-01', '2023-11-15', 3, 'S'),
(15, 'Service Mesh Implementation', 'Implementación de service mesh para observabilidad y seguridad de microservicios.', 'Istio, Kubernetes, Prometheus', 'In Progress', 14200.00, '2024-01-05', NULL, 3, 'S'),
(16, 'Multi-Tenant SaaS Platform', 'Plataforma SaaS multi-tenant con aislamiento de datos y customización por cliente.', 'Spring Boot, PostgreSQL, Angular', 'Planned', 28000.00, '2024-04-01', NULL, 3, 'S'),
(17, 'Monitoring and Logging', 'Sistema centralizado de monitoreo y logs para infraestructura distribuida.', 'ELK Stack, Grafana, Prometheus', 'Completed', 11200.00, '2023-04-15', '2023-09-30', 3, 'S'),
(18, 'Authentication Service', 'Servicio centralizado de autenticación y autorización con OAuth2 y JWT.', 'Keycloak, Spring Security, Redis', 'Completed', 8900.00, '2023-07-01', '2023-12-10', 3, 'S');

-- Persona 4: Ana Martínez (7 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(19, 'Design System Library', 'Librería de componentes reutilizables siguiendo principios de atomic design. Documentación con Storybook.', 'React, TypeScript, Storybook, CSS', 'Completed', 9500.00, '2023-01-20', '2023-05-15', 4, 'S'),
(20, 'Admin Dashboard Template', 'Template de dashboard administrativo con múltiples vistas y componentes pre-construidos.', 'Angular, Material UI, SASS', 'Completed', 6200.00, '2023-04-05', '2023-07-30', 4, 'S'),
(21, 'Landing Page Builder', 'Constructor de landing pages drag-and-drop para marketing. Exportación a código.', 'Vue.js, Node.js, MongoDB', 'In Progress', 12500.00, '2023-10-15', NULL, 4, 'S'),
(22, 'Accessibility Toolkit', 'Kit de herramientas y componentes accesibles WCAG 2.1 AA compliant.', 'React, TypeScript, Jest', 'Completed', 7800.00, '2023-06-10', '2023-10-05', 4, 'S'),
(23, 'Progressive Web App', 'PWA para e-commerce con funcionalidad offline y notificaciones push.', 'React, Service Workers, IndexedDB', 'Completed', 10500.00, '2022-12-01', '2023-04-20', 4, 'S'),
(24, 'Animation Library', 'Librería de animaciones CSS y JavaScript para interfaces modernas.', 'JavaScript, CSS3, GSAP', 'Completed', 5500.00, '2023-08-01', '2023-11-20', 4, 'S'),
(25, 'UI Testing Framework', 'Framework de testing visual automatizado para componentes de UI.', 'Cypress, Playwright, TypeScript', 'In Progress', 8300.00, '2024-01-08', NULL, 4, 'S');

-- Persona 5: Luis Sánchez (9 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(26, 'CI/CD Pipeline Automation', 'Pipeline completo de CI/CD con pruebas automatizadas, análisis de código y despliegue progresivo.', 'Jenkins, GitLab CI, Docker, Kubernetes', 'Completed', 11000.00, '2023-02-10', '2023-06-25', 5, 'S'),
(27, 'Infrastructure as Code', 'Infraestructura completamente automatizada usando Terraform y Ansible.', 'Terraform, Ansible, AWS, Azure', 'Completed', 14500.00, '2023-04-15', '2023-09-10', 5, 'S'),
(28, 'Container Orchestration', 'Implementación de Kubernetes clusters multi-región con auto-scaling.', 'Kubernetes, Helm, ArgoCD', 'Completed', 18000.00, '2022-11-01', '2023-05-20', 5, 'S'),
(29, 'Monitoring Infrastructure', 'Sistema de monitoreo completo con alertas y dashboards personalizados.', 'Prometheus, Grafana, AlertManager', 'Completed', 9200.00, '2023-06-05', '2023-10-15', 5, 'S'),
(30, 'Serverless Architecture', 'Arquitectura serverless para aplicación de alto tráfico con AWS Lambda.', 'AWS Lambda, API Gateway, DynamoDB', 'In Progress', 13500.00, '2023-11-20', NULL, 5, 'S'),
(31, 'Security Hardening', 'Proyecto de fortalecimiento de seguridad en infraestructura cloud.', 'AWS Security Hub, CloudTrail, Vault', 'Completed', 10800.00, '2023-07-10', '2023-12-05', 5, 'S'),
(32, 'Disaster Recovery Plan', 'Implementación de plan de recuperación ante desastres con backup automatizado.', 'AWS, Terraform, Bash, Python', 'Completed', 12000.00, '2023-03-01', '2023-08-15', 5, 'S'),
(33, 'Cost Optimization', 'Análisis y optimización de costos de infraestructura cloud.', 'AWS Cost Explorer, Python, Grafana', 'Completed', 6500.00, '2023-09-01', '2023-11-30', 5, 'S'),
(34, 'GitOps Implementation', 'Implementación de prácticas GitOps para gestión de infraestructura.', 'ArgoCD, Flux, Kubernetes, Git', 'In Progress', 11500.00, '2024-01-15', NULL, 5, 'S');

-- Persona 6: Patricia Ramírez (8 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(35, 'Food Delivery App', 'Aplicación móvil completa para delivery de comida con tracking en tiempo real.', 'React Native, Firebase, Google Maps', 'Completed', 16000.00, '2023-01-10', '2023-07-20', 6, 'S'),
(36, 'Fitness Tracking App', 'App de seguimiento de ejercicios con integración a wearables y retos sociales.', 'Flutter, Node.js, PostgreSQL', 'Completed', 12500.00, '2023-03-15', '2023-09-05', 6, 'S'),
(37, 'Travel Guide App', 'Guía de viajes interactiva con mapas offline y recomendaciones personalizadas.', 'React Native, MongoDB, MapBox', 'In Progress', 10200.00, '2023-10-01', NULL, 6, 'S'),
(38, 'Language Learning App', 'Aplicación para aprendizaje de idiomas con gamificación y reconocimiento de voz.', 'Flutter, Python, TensorFlow', 'Completed', 14800.00, '2022-12-05', '2023-06-30', 6, 'S'),
(39, 'Real Estate App', 'App para búsqueda de propiedades con realidad aumentada y tours virtuales.', 'React Native, Node.js, AWS', 'Completed', 18500.00, '2023-04-20', '2023-11-15', 6, 'S'),
(40, 'Music Streaming App', 'Cliente de música streaming con playlists personalizadas y modo offline.', 'React Native, Redux, Firebase', 'In Progress', 13200.00, '2023-11-10', NULL, 6, 'S'),
(41, 'Event Management App', 'Gestión de eventos con venta de tickets, check-in digital y networking.', 'Flutter, Spring Boot, MySQL', 'Completed', 9800.00, '2023-06-05', '2023-10-20', 6, 'S'),
(42, 'Shopping Assistant App', 'Asistente de compras con comparación de precios y listas compartidas.', 'React Native, Node.js, Redis', 'Planned', 8500.00, '2024-02-01', NULL, 6, 'S');

-- Persona 7: Roberto Torres (9 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(43, 'Data Warehouse Solution', 'Data warehouse empresarial con ETL y reportes analíticos avanzados.', 'Apache Spark, Hadoop, Hive, Python', 'Completed', 28000.00, '2022-10-15', '2023-06-30', 7, 'S'),
(44, 'Real-Time Analytics', 'Pipeline de análisis en tiempo real para datos de streaming.', 'Apache Kafka, Spark Streaming, Cassandra', 'Completed', 22000.00, '2023-02-20', '2023-09-15', 7, 'S'),
(45, 'ML Pipeline Automation', 'Automatización completa de pipelines de machine learning desde entrenamiento hasta producción.', 'MLflow, Airflow, Python, Docker', 'In Progress', 19500.00, '2023-10-05', NULL, 7, 'S'),
(46, 'Customer Churn Prediction', 'Modelo predictivo de abandono de clientes con dashboard de análisis.', 'Python, Scikit-learn, TensorFlow, Tableau', 'Completed', 15000.00, '2023-04-10', '2023-08-25', 7, 'S'),
(47, 'Data Lake Implementation', 'Implementación de data lake con gobernanza y catalogación de datos.', 'AWS S3, Glue, Athena, Python', 'Completed', 24500.00, '2023-01-05', '2023-07-20', 7, 'S'),
(48, 'Recommendation Engine', 'Sistema de recomendaciones personalizado usando collaborative filtering.', 'Python, Neo4j, Redis, FastAPI', 'Completed', 17800.00, '2023-05-15', '2023-11-10', 7, 'S'),
(49, 'Fraud Detection System', 'Sistema de detección de fraude en tiempo real usando machine learning.', 'Python, Kafka, Elasticsearch, Kibana', 'In Progress', 21000.00, '2023-11-01', NULL, 7, 'S'),
(50, 'Data Quality Framework', 'Framework de validación y monitoreo de calidad de datos.', 'Great Expectations, Airflow, Python', 'Completed', 11200.00, '2023-07-05', '2023-12-15', 7, 'S'),
(51, 'Business Intelligence Dashboard', 'Dashboard de BI con KPIs y métricas empresariales en tiempo real.', 'PowerBI, Python, SQL Server', 'Completed', 13500.00, '2023-03-20', '2023-08-10', 7, 'S');

-- Persona 8: Laura Flores (6 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(52, 'Puzzle Adventure Game', 'Juego de aventuras con mecánicas de puzzles y narrativa inmersiva.', 'Unity, C#, Blender', 'Completed', 18000.00, '2022-11-10', '2023-08-30', 8, 'S'),
(53, 'Multiplayer Battle Arena', 'Juego de arena multijugador con sistema de matchmaking y ranking.', 'Unreal Engine, C++, Photon', 'In Progress', 25000.00, '2023-09-15', NULL, 8, 'S'),
(54, 'Mobile Casual Game', 'Juego casual para móviles con monetización y sistema de logros.', 'Unity, C#, Firebase', 'Completed', 12000.00, '2023-03-05', '2023-07-20', 8, 'S'),
(55, 'VR Experience', 'Experiencia de realidad virtual educativa sobre historia antigua.', 'Unity, SteamVR, C#', 'Completed', 22000.00, '2023-01-15', '2023-06-25', 8, 'S'),
(56, 'Endless Runner Game', 'Juego endless runner con power-ups y sistema de tienda.', 'Unity, C#, Unity IAP', 'Completed', 8500.00, '2023-05-10', '2023-09-15', 8, 'S'),
(57, 'Strategy Game', 'Juego de estrategia por turnos con campaña single-player.', 'Godot, GDScript, Aseprite', 'Planned', 15500.00, '2024-03-01', NULL, 8, 'S');

-- Persona 9: Miguel Castro - INACTIVO (7 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(58, 'Security Audit Platform', 'Plataforma automatizada de auditoría de seguridad para aplicaciones web.', 'Python, OWASP ZAP, Burp Suite', 'Completed', 16500.00, '2023-02-10', '2023-07-30', 9, 'S'),
(59, 'Penetration Testing Tool', 'Herramienta de pentesting con automatización de reconocimiento y explotación.', 'Python, Metasploit, Nmap', 'Completed', 13800.00, '2023-04-15', '2023-09-20', 9, 'S'),
(60, 'WAF Implementation', 'Implementación de Web Application Firewall con reglas personalizadas.', 'ModSecurity, Nginx, Lua', 'Completed', 11000.00, '2023-06-05', '2023-10-15', 9, 'S'),
(61, 'SIEM Solution', 'Sistema de gestión de eventos e información de seguridad.', 'ELK Stack, Wazuh, Python', 'In Progress', 19000.00, '2023-11-01', NULL, 9, 'S'),
(62, 'Vulnerability Scanner', 'Escáner de vulnerabilidades con reportes detallados y recomendaciones.', 'Python, OpenVAS, Nessus', 'Completed', 12500.00, '2023-07-20', '2023-12-10', 9, 'S'),
(63, 'Secure Code Review', 'Herramienta de análisis estático de código para detectar vulnerabilidades.', 'SonarQube, Python, Java', 'Completed', 10200.00, '2023-05-10', '2023-09-25', 9, 'S'),
(64, 'Incident Response Platform', 'Plataforma de respuesta a incidentes con playbooks automatizados.', 'TheHive, Cortex, MISP', 'Planned', 17500.00, '2024-02-15', NULL, 9, 'S');

-- Persona 10: Sofía Morales - INACTIVO (5 proyectos activos)
INSERT INTO projects (id, name, description, technologies, status, cost, start_date, end_date, person_id, active) VALUES 
(65, 'Test Automation Framework', 'Framework de automatización de pruebas end-to-end y API testing.', 'Selenium, RestAssured, Java, TestNG', 'Completed', 14000.00, '2023-01-20', '2023-06-15', 10, 'S'),
(66, 'Performance Testing Suite', 'Suite de pruebas de performance y stress testing para aplicaciones web.', 'JMeter, Gatling, Grafana', 'Completed', 11500.00, '2023-03-10', '2023-08-05', 10, 'S'),
(67, 'Mobile Testing Automation', 'Automatización de pruebas para aplicaciones móviles iOS y Android.', 'Appium, Java, Jenkins', 'Completed', 13200.00, '2023-05-15', '2023-10-20', 10, 'S'),
(68, 'API Testing Framework', 'Framework especializado en testing de APIs REST y GraphQL.', 'Postman, Newman, JavaScript', 'In Progress', 9800.00, '2023-11-05', NULL, 10, 'S'),
(69, 'Quality Metrics Dashboard', 'Dashboard de métricas de calidad y cobertura de pruebas.', 'Python, Grafana, PostgreSQL', 'Completed', 8500.00, '2023-07-01', '2023-11-25', 10, 'S');

-- ========================================
-- PROJECT LINKS: 1 enlace por proyecto
-- ========================================

-- Links para proyectos de Persona 1
INSERT INTO project_links (id, name, url, project_id) VALUES 
(1, 'Repository', 'https://github.com/juanperez/ecommerce-platform', 1),
(2, 'Repository', 'https://github.com/juanperez/crm-system', 2),
(3, 'Demo', 'https://demo-banking.juanperez.dev', 3),
(4, 'Repository', 'https://github.com/juanperez/inventory-mgmt', 4),
(5, 'Demo', 'https://devnetwork-mvp.juanperez.dev', 5),
(6, 'Docs', 'https://docs.booking-platform.com', 6),
(7, 'Repository', 'https://github.com/juanperez/healthcare-portal', 7),
(8, 'Demo', 'https://analytics.juanperez.dev', 8);

-- Links para proyectos de Persona 3
INSERT INTO project_links (id, name, url, project_id) VALUES 
(9, 'Docs', 'https://docs.microservices-arch.tech', 9),
(10, 'Repository', 'https://github.com/carlosrodriguez/realtime-messaging', 10),
(11, 'Repository', 'https://github.com/carlosrodriguez/cloud-migration', 11),
(12, 'Demo', 'https://api-mgmt.carlosrodriguez.tech', 12),
(13, 'Repository', 'https://github.com/carlosrodriguez/event-driven', 13),
(14, 'Repository', 'https://github.com/carlosrodriguez/distributed-cache', 14),
(15, 'Docs', 'https://docs.service-mesh.tech', 15),
(16, 'Demo', 'https://saas-platform.carlosrodriguez.tech', 16),
(17, 'Repository', 'https://github.com/carlosrodriguez/monitoring-logging', 17),
(18, 'Repository', 'https://github.com/carlosrodriguez/auth-service', 18);

-- Links para proyectos de Persona 4
INSERT INTO project_links (id, name, url, project_id) VALUES 
(19, 'Storybook', 'https://storybook.anamartinez.dev', 19),
(20, 'Demo', 'https://admin-dashboard.anamartinez.dev', 20),
(21, 'Demo', 'https://landing-builder.anamartinez.dev', 21),
(22, 'Docs', 'https://a11y-toolkit.anamartinez.dev', 22),
(23, 'Demo', 'https://pwa-ecommerce.anamartinez.dev', 23),
(24, 'Repository', 'https://github.com/anamartinez/animation-lib', 24),
(25, 'Docs', 'https://ui-testing.anamartinez.dev', 25);

-- Links para proyectos de Persona 5
INSERT INTO project_links (id, name, url, project_id) VALUES 
(26, 'Repository', 'https://github.com/luissanchez/cicd-pipeline', 26),
(27, 'Repository', 'https://github.com/luissanchez/iac', 27),
(28, 'Docs', 'https://k8s-docs.luissanchez.cloud', 28),
(29, 'Dashboard', 'https://monitoring.luissanchez.cloud', 29),
(30, 'Repository', 'https://github.com/luissanchez/serverless-arch', 30),
(31, 'Docs', 'https://security-hardening.luissanchez.cloud', 31),
(32, 'Repository', 'https://github.com/luissanchez/disaster-recovery', 32),
(33, 'Dashboard', 'https://cost-analysis.luissanchez.cloud', 33),
(34, 'Repository', 'https://github.com/luissanchez/gitops', 34);

-- Links para proyectos de Persona 6
INSERT INTO project_links (id, name, url, project_id) VALUES 
(35, 'Demo', 'https://fooddelivery-demo.patriciaramirez.app', 35),
(36, 'Store', 'https://play.google.com/store/apps/fitness-tracker', 36),
(37, 'Demo', 'https://travel-guide.patriciaramirez.app', 37),
(38, 'Store', 'https://apps.apple.com/app/language-learning', 38),
(39, 'Demo', 'https://realestate-app.patriciaramirez.app', 39),
(40, 'Demo', 'https://music-streaming.patriciaramirez.app', 40),
(41, 'Repository', 'https://github.com/patriciaramirez/event-management', 41),
(42, 'Docs', 'https://docs.shopping-assistant.app', 42);

-- Links para proyectos de Persona 7
INSERT INTO project_links (id, name, url, project_id) VALUES 
(43, 'Docs', 'https://datawarehouse-docs.robertotorres.data', 43),
(44, 'Repository', 'https://github.com/robertotorres/realtime-analytics', 44),
(45, 'Repository', 'https://github.com/robertotorres/ml-pipeline', 45),
(46, 'Dashboard', 'https://churn-prediction.robertotorres.data', 46),
(47, 'Repository', 'https://github.com/robertotorres/data-lake', 47),
(48, 'Demo', 'https://recommendation-engine.robertotorres.data', 48),
(49, 'Repository', 'https://github.com/robertotorres/fraud-detection', 49),
(50, 'Docs', 'https://data-quality.robertotorres.data', 50),
(51, 'Dashboard', 'https://bi-dashboard.robertotorres.data', 51);

-- Links para proyectos de Persona 8
INSERT INTO project_links (id, name, url, project_id) VALUES 
(52, 'Itch.io', 'https://lauraflores.itch.io/puzzle-adventure', 52),
(53, 'Steam', 'https://store.steampowered.com/app/multiplayer-arena', 53),
(54, 'Play Store', 'https://play.google.com/store/apps/casual-game', 54),
(55, 'Steam', 'https://store.steampowered.com/app/vr-experience', 55),
(56, 'App Store', 'https://apps.apple.com/app/endless-runner', 56),
(57, 'Itch.io', 'https://lauraflores.itch.io/strategy-game', 57);

-- Links para proyectos de Persona 9 (INACTIVO)
INSERT INTO project_links (id, name, url, project_id) VALUES 
(58, 'Repository', 'https://github.com/miguelcastro/security-audit', 58),
(59, 'Repository', 'https://github.com/miguelcastro/pentest-tool', 59),
(60, 'Docs', 'https://waf-docs.miguelcastro.security', 60),
(61, 'Repository', 'https://github.com/miguelcastro/siem-solution', 61),
(62, 'Repository', 'https://github.com/miguelcastro/vuln-scanner', 62),
(63, 'Docs', 'https://secure-code.miguelcastro.security', 63),
(64, 'Repository', 'https://github.com/miguelcastro/incident-response', 64);

-- Links para proyectos de Persona 10 (INACTIVO)
INSERT INTO project_links (id, name, url, project_id) VALUES 
(65, 'Repository', 'https://github.com/sofiamorales/test-automation', 65),
(66, 'Repository', 'https://github.com/sofiamorales/performance-testing', 66),
(67, 'Repository', 'https://github.com/sofiamorales/mobile-testing', 67),
(68, 'Repository', 'https://github.com/sofiamorales/api-testing', 68),
(69, 'Dashboard', 'https://quality-metrics.sofiamorales.dev', 69);
