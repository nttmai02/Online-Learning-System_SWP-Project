/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Page {
    private int nrpp, size, cp, tp, begin, end, startPage, endPage; //count from 1
    private int gap = 2;

    public Page() {
    }

    public Page(int nrpp, int cp, int size) {
        this.nrpp = nrpp;
        this.cp = cp;
        this.size = size;
    }

    public int getNrpp() {
        return nrpp;
    }

    public void setNrpp(int nrpp) {
        this.nrpp = nrpp;
    }

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getTp() {
        return tp;
    }

    public void setTp(int tp) {
        this.tp = tp;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public int getGap() {
        return gap;
    }

    public void setGap(int gap) {
        this.gap = gap;
    }

    public void process() {
        tp = size % nrpp == 0 ? (size / nrpp) : ((size / nrpp) + 1);
        cp = Math.min(cp, tp);
        cp = Math.max(cp, 1);
        begin = (cp - 1) * nrpp;
        end = cp * nrpp - 1;
        end = end > size - 1 ? size - 1 : end;
        startPage = cp - gap;
        endPage = cp + gap;
        startPage = startPage < 1 ? 1 : startPage;
        endPage = endPage >= tp ? tp : endPage;
    }

    @Override
    public String toString() {
        return "Page{" + "nrpp=" + nrpp + ", size=" + size + ", cp=" + cp + ", tp=" + tp + ", begin=" + begin + ", end=" + end + ", startPage=" + startPage + ", endPage=" + endPage + ", gap=" + gap + '}';
    }
}
