# Trabajo Integrador: Virtualización y Computación en la Nube
**Materia:** Arquitectura y Sistemas Operativos
**Carrera:** Tecnicatura Universitaria en Programación a Distancia (TUPaD) - UTN
**Año:** 2026

---

## 1. Descripción del Proyecto
Este proyecto aborda la investigación e implementación práctica de tecnologías de virtualización. Se analiza el rol de los hipervisores (Tipo 1 y Tipo 2), el aprovisionamiento de recursos computacionales (vCPU, vRAM, almacenamiento dinámico y redes virtuales) y su relación directa con los modelos de infraestructura en la nube (IaaS).

---

## 2. Marco Teórico y Fuentes Técnicas
* **Virtualización:** Abstracción de recursos físicos de cómputo para permitir la ejecución de múltiples sistemas operativos de manera simultánea y aislada.
* **Hipervisores:**
  * **Tipo 1 (Bare-Metal):** Ejecución directa sobre hardware (VMware ESXi, Proxmox VE, KVM).
  * **Tipo 2 (Hosted):** Ejecución como aplicación sobre sistema operativo anfitrión (Oracle VirtualBox, VMware Workstation).
* **Ejemplo Cloud (IaaS):** Modelos elásticos como AWS EC2 o Azure Virtual Machines, donde se asignan instancias virtuales aisladas a través de hipervisores optimizados sobre centros de datos físicos.
* **Referencias Bibliográficas:**
  * Silberschatz, A., Galvin, P. B., & Gagne, G. (2018). Operating System Concepts.
  * Tanenbaum, A. S., & Bos, H. (2015). Modern Operating Systems.
  * Oracle Corporation. (2026). Oracle VM VirtualBox User Manual.

---

## 3. Especificaciones del Caso Práctico
* **Hardware Anfitrión (Host):**
  * Procesador: AMD Ryzen 3 7000 Series (Soporte AMD-V habilitado)
  * Memoria RAM: 8 GB
  * Almacenamiento: SSD
* **Software:**
  * SO Anfitrión: Microsoft Windows 11 (64-bit)
  * Hipervisor: Oracle VirtualBox 7.x (Tipo 2)
  * SO Invitado (Guest): Ubuntu Linux (64-bit)
* **Recursos Asignados a la VM:**
  * vCPU: 2 núcleos virtuales
  * vRAM: 2048 MB (2 GB)
  * Disco Virtual: 20 GB (Formato VDI dinámico)
  * Red: Modo NAT

---

## 4. Pruebas y Validación de Comandos

1. Verificación de Kernel y Arquitectura:
   * uname -a
   * lscpu | head -n 12

2. Monitoreo de Recursos de Memoria:
   * free -h

3. Conectividad de Red:
   * ip addr
   * ping -c 4 8.8.8.8

4. Despliegue y Estado de Servicio Web:
   * sudo apt update && sudo apt install -y apache2
   * systemctl status apache2 --no-pager

---

## 5. Estructura del Repositorio
* docs/: Documento final del trabajo integrador en formato PDF.
* capturas/: Evidencias gráficas del aprovisionamiento, configuración y pruebas de terminal.
* video/: Enlace al video demostrativo de autoría y funcionamiento.
