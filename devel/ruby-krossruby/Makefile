# $FreeBSD$

PORTNAME=	krossruby
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	devel kde ruby
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	kross-interpreters-${PORTVERSION}
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Ruby bindings for Qt/KDE

CONFLICTS=	ruby1[89]-kdebindings-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix pimlibs automoc4
USE_QT4=	corelib gui qmake_build moc_build uic_build rcc_build
USE_RUBY=	yes
USE_XZ=		yes
USES=		cmake:outsource
CMAKE_ARGS+=	-DBUILD_python:BOOL=FALSE \
		-DBUILD_falcon:BOOL=FALSE \
		-DBUILD_java:BOOL=FALSE
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	lib/kde4/krossruby.so

.include <bsd.port.mk>
