<?php

use PrestaShop\PrestaShop\Adapter\Image\ImageRetriever;

class CategoryController extends CategoryControllerCore
{ 
    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        parent::initContent();
    }
    
    protected function getImage($object, $id_image)
    {        
        // Extension
        $imageFolderPath = rtrim(_PS_CAT_IMG_DIR_, DIRECTORY_SEPARATOR);
        $extPath = $imageFolderPath . DIRECTORY_SEPARATOR . 'fileType';
        $ext = @file_get_contents($extPath) ?: 'jpg';

        // Dossier catégorie
        $explode = explode(DIRECTORY_SEPARATOR, _PS_CAT_IMG_DIR_);
        $idPremierDossierApresImg = array_search('img', $explode) +1;
        $elementsDossierCategorie = array_slice($explode, $idPremierDossierApresImg);

        // Taille originale
        $original = _PS_BASE_URL_ . _PS_IMG_ ;
        foreach($elementsDossierCategorie as $elem) {
            if ($elem != '')  {
                $original .= $elem . DIRECTORY_SEPARATOR;
            }
        }
        $original .= $id_image . '.' . $ext;

        // Rééxecuter le Retriever du "core"
        $retriever = new ImageRetriever(
            $this->context->link
        );
        $retour = $retriever->getImage($object, $id_image);

        // Valoriser original pour twig
        $retour['original'] = $original;

        return $retour;
    }
}