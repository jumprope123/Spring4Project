package shin.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import shin.spring.mvc.vo.GalleryVO;

import java.util.List;

public interface GalleryService {
   Boolean newGallery(GalleryVO gvo, MultipartFile[] img);

    List<GalleryVO> readGallery(String cp);

    int countGallery();

    GalleryVO readOneGallery(String gno);
}
