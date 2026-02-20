-- Schema para Evaluación Técnica 4: Portfolio de Desarrolladores
-- Sistema de Gestión de Personas y Proyectos de Software

-- Tabla: persons (independiente)
CREATE TABLE persons (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    bio TEXT,
    profession VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    active CHAR(1) DEFAULT 'S' NOT NULL CHECK (active IN ('S', 'N'))
);

-- Tabla: contact_links (ManyToOne con persons)
CREATE TABLE contact_links (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    url VARCHAR(255) NOT NULL,
    person_id BIGINT NOT NULL,
    CONSTRAINT fk_contact_links_person FOREIGN KEY (person_id) REFERENCES persons(id)
);

-- Tabla: projects (ManyToOne con persons)
CREATE TABLE projects (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    technologies TEXT,
    status VARCHAR(50) NOT NULL CHECK (status IN ('Completed', 'In Progress', 'Planned')),
    cost DECIMAL(12, 2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    person_id BIGINT NOT NULL,
    active CHAR(1) DEFAULT 'S' NOT NULL CHECK (active IN ('S', 'N')),
    CONSTRAINT fk_projects_person FOREIGN KEY (person_id) REFERENCES persons(id)
);

-- Tabla: project_links (OneToOne con projects)
CREATE TABLE project_links (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    url VARCHAR(255) NOT NULL,
    project_id BIGINT NOT NULL UNIQUE,
    CONSTRAINT fk_project_links_project FOREIGN KEY (project_id) REFERENCES projects(id)
);

-- Índices para mejorar performance en consultas
CREATE INDEX idx_persons_active ON persons(active);
CREATE INDEX idx_contact_links_person ON contact_links(person_id);
CREATE INDEX idx_projects_person ON projects(person_id);
CREATE INDEX idx_projects_active ON projects(active);
CREATE INDEX idx_projects_cost ON projects(cost);
CREATE INDEX idx_project_links_project ON project_links(project_id);
