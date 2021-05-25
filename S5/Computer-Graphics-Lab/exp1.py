from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *
import math
def init():
    glClearColor(0.0,0.0,0.0,1.0)
    gluOrtho2D(-1.0,1.0,-1.0,1.0)
def plotpoints():
    glClear(GL_COLOR_BUFFER_BIT)
    glColor3f(1.0,0.0,0.0)
    glPointSize(5.0)
    glBegin(GL_POINTS)
    glVertex2f(0.0,0.0)
    glEnd()
    glFlush()
def main():
    glutInit(sys.argv)
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB)
    glutInitWindowSize(500,500)
    glutInitWindowPosition(50,50)
    glutCreateWindow(b"Point")
    glutDisplayFunc(plotpoints)
    init()
    glutMainLoop()
if __name__ == "__main__":
    main()