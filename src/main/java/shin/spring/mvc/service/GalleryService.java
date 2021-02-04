package shin.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import shin.spring.mvc.vo.GalleryVO;

public interface GalleryService {
   Boolean newGallery(GalleryVO gvo, MultipartFile[] img);
}
