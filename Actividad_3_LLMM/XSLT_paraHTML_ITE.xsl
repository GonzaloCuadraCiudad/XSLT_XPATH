<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <head>
            <title>Proeduca - Instituto Tecnológico Edix</title>
           <link rel="stylesheet" href="css/prueba.css" /> 
        </head>

        
        <body id="fondo">
            <div id='contenedor'>
            

                <header>
                 
                </header>
            
                <nav>
                    <div id="navegador">
                    <ul>
                        <li id="a"><a  href="" >Home</a></li>
                        <li><a href="formulario.html">Contacto</a></li>
                        <li><a href="#tlf">Llámanos</a></li>
                    </ul>
                    </div>
                </nav>

                <section id="nombres">
                   
                    <h2><xsl:value-of select="/ite/empresa"/></h2>
                    
                    <h5><xsl:value-of select="/ite/@nombre"/></h5>
                </section>

                <section id="profes">
                   
                    
                    <article id="profes_int">
                        <h2>Nuestro equipo</h2>
                        <footer>
                            <table>
                                <caption><h4>Profesores del centro</h4></caption>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                </tr>
                                <xsl:for-each select="/ite/profesores/profesor">
                                <tr>
                                    <td><xsl:value-of select="id"/></td>
                                    <td><xsl:value-of select="nombre"/></td>
                                </tr>
                                </xsl:for-each>
                            </table>
                            
                        </footer>
                      
                    </article>
                </section>
                <section id="admin">
                    <article>
                        <table>
                            <caption><h2 id="admin_tit">Dirección y administración</h2></caption>
                            <tr>
                                <td/>
                                <th>Nombre</th>
                                <th>Despacho</th>
                            </tr>
                            <tr>
                                <th>Director/a</th>
                                <td><xsl:value-of select="/ite/director/nombre"/></td>
                                <td><xsl:value-of select="/ite/director/despacho"/></td>
                            </tr>
                            <tr>
                                <th>Jefe/a de estudios</th>
                                <td><xsl:value-of select="/ite/jefe_estudios/nombre"/></td>
                                <td><xsl:value-of select="/ite/jefe_estudios/despacho"/></td>
                                
                            </tr>
                        </table>
                    </article>
                </section>

                <section id="estudios">
                <h2>Oferta académica</h2>

                    <ul>

                        <li><xsl:value-of select="/ite/ciclos/ciclo[1]/@id"/></li>
                            <ul>
                                <li>Nombre completo: <xsl:value-of select="/ite/ciclos/ciclo[1]/nombre"/></li>
                                <li>Nivel: <xsl:value-of select="/ite/ciclos/ciclo[1]/grado"/></li>
                                <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[1]/decretoTitulo/@ano"/></li>
                            </ul>
                        <li><xsl:value-of select="/ite/ciclos/ciclo[2]/@id"/></li>
                            <ul>
                                <li>Nombre completo: <xsl:value-of select="/ite/ciclos/ciclo[2]/nombre"/></li>
                                <li>Nivel: <xsl:value-of select="/ite/ciclos/ciclo[2]/grado"/></li>
                                <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[2]/decretoTitulo/@ano"/></li>
                            </ul>
                        <li><xsl:value-of select="/ite/ciclos/ciclo[3]/@id"/></li>
                            <ul>
                                <li>Nombre completo: <xsl:value-of select="/ite/ciclos/ciclo[3]/nombre"/></li>
                                <li>Nivel: <xsl:value-of select="/ite/ciclos/ciclo[3]/grado"/></li>
                                <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[3]/decretoTitulo/@ano"/></li>
                            </ul>

                    </ul>

                </section>

                <section>

                    
                </section>

                <aside>
                    <img id="" src="" />
                </aside>

                
                <footer>
                    <h3 id="tlf">Llámanos! <xsl:value-of select="/ite/telefono"/></h3>
                    <br/><br/>
                    <h3>Visita nuestra web! <xsl:value-of select="/ite/@web"/></h3>

                    <p>Todos los derechos reservados! copyright 2021</p>
                </footer>
            
            
            </div>
        </body>
    </html>




    </xsl:template>
</xsl:stylesheet>