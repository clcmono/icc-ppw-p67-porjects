
## ANEXO: Íconos de Redes Sociales (Frontend)

**Opciones para implementar íconos:**

1. **Font Awesome (CDN):**
```html
<!-- En index.html -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- En el template -->
<a [href]="link.url" target="_blank">
  <i class="fab fa-github" *ngIf="link.name === 'GitHub'"></i>
  <i class="fab fa-linkedin" *ngIf="link.name === 'LinkedIn'"></i>
  <i class="fas fa-link" *ngIf="link.name !== 'GitHub' && link.name !== 'LinkedIn'"></i>
</a>
```

2. **Método getIconClass() en componente:**
```typescript
getIconClass(linkName: string): string {
  const icons: { [key: string]: string } = {
    'GitHub': 'fab fa-github',
    'LinkedIn': 'fab fa-linkedin',
    'Twitter': 'fab fa-twitter',
    'Portfolio': 'fas fa-globe',
    'Website': 'fas fa-globe'
  };
  return icons[linkName] || 'fas fa-link';
}
```

**Ejemplo de uso en template:**
```html
<div class="contact-links">
  <a *ngFor="let link of person.contactLinks" 
     [href]="link.url" 
     target="_blank"
     class="contact-link">
    <i [class]="getIconClass(link.name)"></i>
  </a>
</div>
```
