# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD$

PORTNAME=	jigzo
PORTVERSION=	0.6.1
PORTREVISION=	7
CATEGORIES=	games
MASTER_SITES=	http://www.iua.upf.es/~mdeboer/resorama/jigzo/ \
		http://mirror.amdmi3.ru/distfiles/
EXTRACT_SUFX=	.tgz

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	An OpenGL jigsaw puzzle game

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png \
		jpeg:${PORTSDIR}/graphics/jpeg

USE_SDL=	sdl mixer
USE_GL=		gl
USE_GMAKE=	yes
MAKE_ARGS=	CXX=${CXX}
MAKE_JOBS_SAFE=	yes

PORTDOCS=	*

DESKTOP_ENTRIES="Jigzo" \
		"An OpenGL jigsaw puzzle game" \
		"" \
		"jigzo" \
		"Game;LogicGame;KidsGame;" \
		false

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e "s|int_p_NULL|NULL|g" \
		${WRKSRC}/src/Loader.cxx
.for i in font image puzzles sound
	@${REINPLACE_CMD} -e "s|${i}/|${DATADIR}/${i}/|g" \
	    ${WRKSRC}/src/main.cxx
.endfor
	@${FIND} ${WRKSRC} -name .thumbnails | ${XARGS} ${RM} -rf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${MKDIR} ${DATADIR}
	cd ${WRKSRC} && ${COPYTREE_SHARE} "font image puzzles sound" \
		${DATADIR}/

.if ${PORT_OPTIONS:MDOCS}
post-install:
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
