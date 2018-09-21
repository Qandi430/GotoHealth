package kr.co.mlec.common.file;

import java.io.File;
import java.util.UUID;

import com.oreilly.servlet.multipart.FileRenamePolicy;


public class MlecFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File f) {
		// c:/app/upload/2018/09/06/12/a.jpg
		String parent = f.getParent();	// c:/app/upload/2018/09/06/12
		String name = f.getName();	// a.jpg
		String ext = "";
		// split, substring, indexOf
		int index = name.lastIndexOf(".");
		if(index != -1) {
			ext = name.substring(index);
		} // if
		
		String uName = UUID.randomUUID().toString();
		return new File(parent, uName + ext);  
	} // rename

} // end class
